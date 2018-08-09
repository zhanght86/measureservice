package com.talent.base.util;

import java.io.IOException;
import java.text.DecimalFormat;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

public class CustomDouble2Serialize extends JsonSerializer<Double> {  
	  
    private DecimalFormat df = new DecimalFormat("0.00");  
  
    @Override  
    public void serialize(Double value, JsonGenerator jgen,  
            SerializerProvider provider) throws IOException,
            JsonProcessingException {  
  
        jgen.writeString(df.format(value));  
    }  
}