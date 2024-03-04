package com.twitter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
/* loaded from: classes4.dex */
public class Extractor {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f35093a = true;

    public List<Entity> a(String str) {
        if (str != null && str.length() != 0) {
            if (str.indexOf(this.f35093a ? 46 : 58) != -1) {
                ArrayList arrayList = new ArrayList();
                Matcher matcher = ue.a.f58407l.matcher(str);
                while (matcher.find()) {
                    if (matcher.group(4) != null || (this.f35093a && !ue.a.f58409n.matcher(matcher.group(2)).matches())) {
                        String group = matcher.group(3);
                        int start = matcher.start(3);
                        int end = matcher.end(3);
                        Matcher matcher2 = ue.a.f58408m.matcher(group);
                        if (matcher2.find()) {
                            group = matcher2.group();
                            end = group.length() + start;
                        }
                        arrayList.add(new Entity(start, end, group, Entity.Type.URL));
                    }
                }
                return arrayList;
            }
        }
        return Collections.emptyList();
    }

    /* loaded from: classes4.dex */
    public static class Entity {

        /* renamed from: a  reason: collision with root package name */
        protected int f35094a;

        /* renamed from: b  reason: collision with root package name */
        protected int f35095b;

        /* renamed from: c  reason: collision with root package name */
        protected final String f35096c;

        /* renamed from: d  reason: collision with root package name */
        protected final String f35097d;

        /* renamed from: e  reason: collision with root package name */
        protected final Type f35098e;

        /* renamed from: f  reason: collision with root package name */
        protected String f35099f;

        /* renamed from: g  reason: collision with root package name */
        protected String f35100g;

        /* loaded from: classes4.dex */
        public enum Type {
            URL,
            HASHTAG,
            MENTION,
            CASHTAG
        }

        public Entity(int i9, int i10, String str, String str2, Type type) {
            this.f35099f = null;
            this.f35100g = null;
            this.f35094a = i9;
            this.f35095b = i10;
            this.f35096c = str;
            this.f35097d = str2;
            this.f35098e = type;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Entity) {
                Entity entity = (Entity) obj;
                return this.f35098e.equals(entity.f35098e) && this.f35094a == entity.f35094a && this.f35095b == entity.f35095b && this.f35096c.equals(entity.f35096c);
            }
            return false;
        }

        public int hashCode() {
            return this.f35098e.hashCode() + this.f35096c.hashCode() + this.f35094a + this.f35095b;
        }

        public String toString() {
            return this.f35096c + "(" + this.f35098e + ") [" + this.f35094a + "," + this.f35095b + "]";
        }

        public Entity(int i9, int i10, String str, Type type) {
            this(i9, i10, str, null, type);
        }
    }
}
