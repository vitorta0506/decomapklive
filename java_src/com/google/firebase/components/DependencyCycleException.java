package com.google.firebase.components;

import a6.d;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public class DependencyCycleException extends DependencyException {
    private final List<d<?>> componentsInCycle;

    public DependencyCycleException(List<d<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<d<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}
