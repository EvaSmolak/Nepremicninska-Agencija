package si.feri.NepremicninskaAgencija.Email;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.common.PDRectangle;
import org.apache.pdfbox.pdmodel.font.PDFont;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import si.feri.NepremicninskaAgencija.models.Nepremicnina;
import si.feri.NepremicninskaAgencija.models.Slika;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class PdfGenerator {
    private static final PDFont FONT = PDType1Font.HELVETICA;
    private static final float FONT_SIZE = 12;
    private static final float LEADING = -1.5f * FONT_SIZE;
    private static final String GLAVNI_NASLOV_PDF="Nepremicninska agencija!";

    private PDPageContentStream stream;
    private Nepremicnina nepremicnina;
    private PDDocument doc;
    private PDFont font;
        PdfGenerator(Nepremicnina nep, List<Slika> slike) {
            try {
                nep.brezSumnikov();
                nepremicnina=nep;
                doc = new PDDocument();





            }catch (Exception e){
                e.printStackTrace();
            }

        }

        public PdfInputStream pdfNepremicnina(){
            try {
                prvaStranGen();
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                doc.save(baos);
                doc.close();
                return new PdfInputStream(baos);
            }catch (IOException e ){
                e.printStackTrace();
            }
            return null;
        }



        private void prvaStranGen(){
            PDPage prvaStran = new PDPage(PDRectangle.A4);
            PDRectangle mediaBox = prvaStran.getMediaBox();
            String title = GLAVNI_NASLOV_PDF;
            font=PDType1Font.HELVETICA_BOLD;
            int marginTop = 30;
            int fontSize = 25;
            try {
                stream = new PDPageContentStream(doc, prvaStran);
                float titleWidth = font.getStringWidth(title) / 1000 * fontSize;
                float titleHeight = font.getFontDescriptor().getFontBoundingBox().getHeight() / 1000 * fontSize;
                float startX = (mediaBox.getWidth() - titleWidth) / 2;
                float startY = mediaBox.getHeight() - marginTop - titleHeight;
                stream.beginText();
                stream.setFont(font, fontSize);
                stream.newLineAtOffset(startX, startY);
                stream.showText(title);
                stream.endText();
                alineja(15,0,75,750,"Podatki nepremicnine: ","");
                alineja(12,12,60,710,"Naslov: ","");
                stream.close();
            }catch (IOException e){
                e.printStackTrace();
            }
            doc.addPage(prvaStran);
        }


        private void alineja(int fontSize,int fontSize2,int x , int y,String textBold,String textNormal){
            try {
                stream.beginText();
                font=PDType1Font.HELVETICA_BOLD;
                stream.setFont(font,fontSize);
                stream.newLineAtOffset(x, y);
                stream.showText(textBold);
                font=PDType1Font.HELVETICA;
                stream.setFont(font,fontSize2);
                stream.showText(textNormal);
                stream.endText();

            }catch (IOException e){
                e.printStackTrace();
            }
        }



        public PdfInputStream slika(){
            try (final PDDocument doc = new PDDocument()){

                PDPage page = new PDPage();
                doc.addPage(page);

                String image = PdfGenerator.class.getResource("/PDFDokumenti//logo.png").getFile();
                PDImageXObject pdImage = PDImageXObject.createFromFile(image, doc);

                pdImage.setWidth(150);
                pdImage.setHeight(150);

                PDPageContentStream contents = new PDPageContentStream(doc, page);
                PDRectangle mediaBox = page.getMediaBox();

                float startX = (mediaBox.getWidth() - pdImage.getWidth()) / 2;
                float startY = (mediaBox.getHeight() - pdImage.getHeight()) / 2;
                contents.drawImage(pdImage, 110, 0);
                contents.close();


                ByteArrayOutputStream baos = new ByteArrayOutputStream();

                doc.save(baos);
                doc.close();

                return new PdfInputStream(baos);
            } catch (IOException e){
                System.err.println("Exception while trying to create pdf document - " + e);
            }
            return null;
        }



            public void kreiraj(){
                try {
                    PDDocument doc = new PDDocument();
                    PDPage page = new PDPage();
                    doc.addPage(page);
                    PDPageContentStream contentStream = new PDPageContentStream(doc, page);

                    PDRectangle mediaBox = page.getMediaBox();
                    float marginY = 80;
                    float marginX = 60;
                    float width = mediaBox.getWidth() - 2 * marginX;
                    float startX = mediaBox.getLowerLeftX() + marginX;
                    float startY = mediaBox.getUpperRightY() - marginY;




                    String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt" +
                            " ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco" +
                            " laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in " +
                            " ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco" +
                            " laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in " +
                            "voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat" +
                            " non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

                    contentStream.beginText();
                    addParagraph(contentStream, width, startX, startY, text, true);
                    addParagraph(contentStream, width, 0, -FONT_SIZE, text);
                    addParagraph(contentStream, width, 0, -FONT_SIZE, text);
                    addParagraph(contentStream, width, 0, -FONT_SIZE, text, false);
                    contentStream.endText();

                    contentStream.close();

                    doc.save(new File("src/main/resources/PDFDokumenti/example.pdf"));
                    doc.close();
                } catch (IOException e){
                    System.err.println("Exception while trying to create pdf document - " + e);
                }

            }



            private static void addParagraph(PDPageContentStream contentStream, float width, float sx,
                                             float sy, String text) throws IOException {

                addParagraph(contentStream, width, sx, sy, text, false);
            }

            private static void addParagraph(PDPageContentStream contentStream, float width, float sx,
                                             float sy, String text, boolean justify) throws IOException {
                List<String> lines = parseLines(text, width);
                contentStream.setFont(FONT, FONT_SIZE);
                contentStream.newLineAtOffset(sx, sy);
                for (String line: lines) {
                    float charSpacing = 0;
                    if (justify){
                        if (line.length() > 1) {
                            float size = FONT_SIZE * FONT.getStringWidth(line) / 1000;
                            float free = width - size;
                            if (free > 0 && !lines.get(lines.size() - 1).equals(line)) {
                                charSpacing = free / (line.length() - 1);
                            }
                        }
                    }
                    contentStream.setCharacterSpacing(charSpacing);
                    contentStream.showText(line);
                    contentStream.newLineAtOffset(0, LEADING);
                }
            }

            private static List<String> parseLines(String text, float width) throws IOException {
                List<String> lines = new ArrayList<String>();
                int lastSpace = -1;
                while (text.length() > 0) {
                    int spaceIndex = text.indexOf(' ', lastSpace + 1);
                    if (spaceIndex < 0)
                        spaceIndex = text.length();
                    String subString = text.substring(0, spaceIndex);
                    float size = FONT_SIZE * FONT.getStringWidth(subString) / 1000;
                    if (size > width) {
                        if (lastSpace < 0){
                            lastSpace = spaceIndex;
                        }
                        subString = text.substring(0, lastSpace);
                        lines.add(subString);
                        text = text.substring(lastSpace).trim();
                        lastSpace = -1;
                    } else if (spaceIndex == text.length()) {
                        lines.add(text);
                        text = "";
                    } else {
                        lastSpace = spaceIndex;
                    }
                }
                return lines;
            }





            //testni primer- na njem probaj izvesti watchService
            public void test() {
                try {
                    PDDocument doc = new PDDocument();
                    PDPage page = new PDPage();
                    doc.addPage(page);
                    PDPageContentStream content = new PDPageContentStream(doc, page);
                    content.beginText();
                    content.setFont(PDType1Font.HELVETICA, 12);
                    content.newLineAtOffset(100, 700);
                    content.showText("Apache PDFBox Create PDF Document");
                    content.endText();
                    content.close();
                    // FileSystemResource file = new FileSystemResource("src//main//resources//PDFDokumenti//simple.pdf");
                    doc.save(new File("src/main/resources/PDFDokumenti/simple.pdf"));
                    //doc.save(new FileSystemResource("src//main//resources//PDFDokumenti//simple.pdf").getFile());
                    doc.close();

                } catch (IOException e) {
                }
            }
}


