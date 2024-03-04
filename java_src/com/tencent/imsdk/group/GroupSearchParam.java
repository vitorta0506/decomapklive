package com.tencent.imsdk.group;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class GroupSearchParam implements Serializable {
    private List<String> keywordList;
    private List<Integer> searchFieldList = new ArrayList();

    public void addSearchField(int i9) {
        this.searchFieldList.add(Integer.valueOf(i9));
    }

    public List<String> getKeywordList() {
        return this.keywordList;
    }

    public List<Integer> getSearchFieldList() {
        return this.searchFieldList;
    }

    public void removeSearchField(int i9) {
        this.searchFieldList.remove(Integer.valueOf(i9));
    }

    public void setKeywordList(List<String> list) {
        this.keywordList = list;
    }

    public void setSearchFieldList(List<Integer> list) {
        this.searchFieldList = list;
    }
}
