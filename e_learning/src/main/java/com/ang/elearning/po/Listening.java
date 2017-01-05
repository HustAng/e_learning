package com.ang.elearning.po;

public class Listening {
    private Integer id;

    private String enContext;

    private String chContext;

    private String audio;

    private Integer typeId;

    private String reserve1;

    private String reserve2;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEnContext() {
        return enContext;
    }

    public void setEnContext(String enContext) {
        this.enContext = enContext == null ? null : enContext.trim();
    }

    public String getChContext() {
        return chContext;
    }

    public void setChContext(String chContext) {
        this.chContext = chContext == null ? null : chContext.trim();
    }

    public String getAudio() {
        return audio;
    }

    public void setAudio(String audio) {
        this.audio = audio == null ? null : audio.trim();
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getReserve1() {
        return reserve1;
    }

    public void setReserve1(String reserve1) {
        this.reserve1 = reserve1 == null ? null : reserve1.trim();
    }

    public String getReserve2() {
        return reserve2;
    }

    public void setReserve2(String reserve2) {
        this.reserve2 = reserve2 == null ? null : reserve2.trim();
    }
}