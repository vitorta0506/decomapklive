package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.Map;
/* loaded from: classes3.dex */
public interface r1 extends p1 {
    Map<Descriptors.FieldDescriptor, Object> getAllFields();

    @Override // 
    l1 getDefaultInstanceForType();

    Descriptors.b getDescriptorForType();

    Object getField(Descriptors.FieldDescriptor fieldDescriptor);

    h3 getUnknownFields();

    boolean hasField(Descriptors.FieldDescriptor fieldDescriptor);
}
