package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3942a;

    /* renamed from: b  reason: collision with root package name */
    private String f3943b;

    /* renamed from: c  reason: collision with root package name */
    private String f3944c;

    /* renamed from: d  reason: collision with root package name */
    private String f3945d;

    /* renamed from: e  reason: collision with root package name */
    private int f3946e = 0;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList<SkuDetails> f3947f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3948g;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f3949a;

        /* renamed from: b  reason: collision with root package name */
        private String f3950b;

        /* renamed from: c  reason: collision with root package name */
        private String f3951c;

        /* renamed from: d  reason: collision with root package name */
        private int f3952d = 0;

        /* renamed from: e  reason: collision with root package name */
        private ArrayList<SkuDetails> f3953e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f3954f;

        /* synthetic */ a(u uVar) {
        }

        @NonNull
        public d a() {
            ArrayList<SkuDetails> arrayList = this.f3953e;
            if (arrayList != null && !arrayList.isEmpty()) {
                ArrayList<SkuDetails> arrayList2 = this.f3953e;
                int size = arrayList2.size();
                int i9 = 0;
                while (i9 < size) {
                    int i10 = i9 + 1;
                    if (arrayList2.get(i9) == null) {
                        throw new IllegalArgumentException("SKU cannot be null.");
                    }
                    i9 = i10;
                }
                if (this.f3953e.size() > 1) {
                    SkuDetails skuDetails = this.f3953e.get(0);
                    String i11 = skuDetails.i();
                    ArrayList<SkuDetails> arrayList3 = this.f3953e;
                    int size2 = arrayList3.size();
                    for (int i12 = 0; i12 < size2; i12++) {
                        SkuDetails skuDetails2 = arrayList3.get(i12);
                        if (!i11.equals("play_pass_subs") && !skuDetails2.i().equals("play_pass_subs") && !i11.equals(skuDetails2.i())) {
                            throw new IllegalArgumentException("SKUs should have the same type.");
                        }
                    }
                    String l10 = skuDetails.l();
                    ArrayList<SkuDetails> arrayList4 = this.f3953e;
                    int size3 = arrayList4.size();
                    for (int i13 = 0; i13 < size3; i13++) {
                        SkuDetails skuDetails3 = arrayList4.get(i13);
                        if (!i11.equals("play_pass_subs") && !skuDetails3.i().equals("play_pass_subs") && !l10.equals(skuDetails3.l())) {
                            throw new IllegalArgumentException("All SKUs must have the same package name.");
                        }
                    }
                }
                d dVar = new d(null);
                dVar.f3942a = true ^ this.f3953e.get(0).l().isEmpty();
                dVar.f3943b = this.f3949a;
                dVar.f3945d = this.f3951c;
                dVar.f3944c = this.f3950b;
                dVar.f3946e = this.f3952d;
                dVar.f3947f = this.f3953e;
                dVar.f3948g = this.f3954f;
                return dVar;
            }
            throw new IllegalArgumentException("SkuDetails must be provided.");
        }

        @NonNull
        public a b(@NonNull SkuDetails skuDetails) {
            ArrayList<SkuDetails> arrayList = new ArrayList<>();
            arrayList.add(skuDetails);
            this.f3953e = arrayList;
            return this;
        }

        @NonNull
        public a c(@NonNull b bVar) {
            this.f3950b = bVar.a();
            this.f3952d = bVar.b();
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String f3955a;

        /* renamed from: b  reason: collision with root package name */
        private int f3956b = 0;

        /* loaded from: classes.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            private String f3957a;

            /* renamed from: b  reason: collision with root package name */
            private int f3958b = 0;

            /* synthetic */ a(u uVar) {
            }

            @NonNull
            public b a() {
                if (TextUtils.isEmpty(this.f3957a) && TextUtils.isEmpty(null)) {
                    throw new IllegalArgumentException("Old SKU purchase token/id must be provided.");
                }
                b bVar = new b(null);
                bVar.f3955a = this.f3957a;
                bVar.f3956b = this.f3958b;
                return bVar;
            }

            @NonNull
            public a b(@NonNull String str) {
                this.f3957a = str;
                return this;
            }

            @NonNull
            public a c(int i9) {
                this.f3958b = i9;
                return this;
            }
        }

        /* synthetic */ b(u uVar) {
        }

        @NonNull
        public static a c() {
            return new a(null);
        }

        String a() {
            return this.f3955a;
        }

        int b() {
            return this.f3956b;
        }
    }

    /* synthetic */ d(u uVar) {
    }

    @NonNull
    public static a b() {
        return new a(null);
    }

    public boolean a() {
        return this.f3948g;
    }

    public final int d() {
        return this.f3946e;
    }

    @Nullable
    public final String h() {
        return this.f3943b;
    }

    @Nullable
    public final String i() {
        return this.f3945d;
    }

    @Nullable
    public final String j() {
        return this.f3944c;
    }

    @NonNull
    public final ArrayList<SkuDetails> l() {
        ArrayList<SkuDetails> arrayList = new ArrayList<>();
        arrayList.addAll(this.f3947f);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean o() {
        return (!this.f3948g && this.f3943b == null && this.f3945d == null && this.f3946e == 0 && !this.f3942a) ? false : true;
    }
}
