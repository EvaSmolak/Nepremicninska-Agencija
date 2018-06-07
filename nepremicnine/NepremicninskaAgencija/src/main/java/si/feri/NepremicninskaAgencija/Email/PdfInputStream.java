package si.feri.NepremicninskaAgencija.Email;

import org.springframework.core.io.InputStreamSource;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class PdfInputStream implements InputStreamSource {
    ByteArrayInputStream bais;

    public PdfInputStream(ByteArrayOutputStream baos) throws IOException{
        this.bais= new ByteArrayInputStream(baos.toByteArray());
        baos.close();
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return bais;
    }
}
