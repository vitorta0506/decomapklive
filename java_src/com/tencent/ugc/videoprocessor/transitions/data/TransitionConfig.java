package com.tencent.ugc.videoprocessor.transitions.data;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class TransitionConfig {
    private final List<TransitionBean> mTransitions = new ArrayList();

    /* loaded from: classes4.dex */
    public static class TransitionBean {
        public int type;
        public long startTimeMs = -1;
        public long endTimeMs = -1;

        public TransitionBean(int i9) {
            this.type = i9;
        }
    }

    public void addTransition(TransitionBean transitionBean) {
        this.mTransitions.add(transitionBean);
    }

    public void clear() {
        this.mTransitions.clear();
    }

    public void deleteLastTransitionEffect() {
        if (this.mTransitions.size() == 0) {
            return;
        }
        List<TransitionBean> list = this.mTransitions;
        list.remove(list.size() - 1);
    }

    public List<TransitionBean> getTransitionList() {
        return this.mTransitions;
    }
}
