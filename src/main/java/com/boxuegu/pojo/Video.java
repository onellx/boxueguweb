package com.boxuegu.pojo;

public class Video {
    private Integer vid;

    private String vtitile;

    private String vpath;

    private Integer cid;

    public Integer getVid() {
        return vid;
    }

    public void setVid(Integer vid) {
        this.vid = vid;
    }

    public String getVtitile() {
        return vtitile;
    }

    public void setVtitile(String vtitile) {
        this.vtitile = vtitile == null ? null : vtitile.trim();
    }

    public String getVpath() {
        return vpath;
    }

    public void setVpath(String vpath) {
        this.vpath = vpath == null ? null : vpath.trim();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }
}