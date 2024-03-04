package com.guochao.faceshow.aaspring.modulars.gift.model;

import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J-\u0010\u0015\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001a\u001a\u00020\bHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\r¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;", "", "giftPathList", "", "Lcom/guochao/faceshow/aaspring/modulars/gift/model/GiftPath;", "iconId", "", "tag", "", "(Ljava/util/List;ILjava/lang/String;)V", "getGiftPathList", "()Ljava/util/List;", "getIconId", "()I", "getTag", "()Ljava/lang/String;", "totalGiftCount", "getTotalGiftCount", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HandyGiftPathData {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final HandyGiftPathData PATH_CROWN;
    @NotNull
    private static final HandyGiftPathData PATH_DIAMONDS;
    @NotNull
    private static final HandyGiftPathData PATH_HEART;
    @NotNull
    private static final HandyGiftPathData PATH_LIKE;
    @NotNull
    private static final HandyGiftPathData PATH_LIPS;
    @NotNull
    private static final HandyGiftPathData PATH_LOVE;
    @NotNull
    private static final HandyGiftPathData PATH_STAR;
    @NotNull
    private final List<GiftPath> giftPathList;
    private final int iconId;
    @NotNull
    private final String tag;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData$Companion;", "", "()V", "PATH_CROWN", "Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;", "PATH_DIAMONDS", "PATH_HEART", "PATH_LIKE", "PATH_LIPS", "PATH_LOVE", "PATH_STAR", "getGiftPathDataList", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final List<HandyGiftPathData> getGiftPathDataList() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(HandyGiftPathData.PATH_HEART);
            arrayList.add(HandyGiftPathData.PATH_LOVE);
            arrayList.add(HandyGiftPathData.PATH_STAR);
            arrayList.add(HandyGiftPathData.PATH_CROWN);
            arrayList.add(HandyGiftPathData.PATH_DIAMONDS);
            arrayList.add(HandyGiftPathData.PATH_LIPS);
            arrayList.add(HandyGiftPathData.PATH_LIKE);
            return arrayList;
        }
    }

    static {
        ArrayList arrayListOf;
        ArrayList arrayListOf2;
        ArrayList arrayListOf3;
        ArrayList arrayListOf4;
        ArrayList arrayListOf5;
        ArrayList arrayListOf6;
        ArrayList arrayListOf7;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M200.49,73.46h1.98v1.98h-1.98z", 1, true), new GiftPath("M161.98,42.84h1.98v1.98h-1.98z", 1, true), new GiftPath("M113.58,30h1.98v1.98h-1.98z", 1, true), new GiftPath("M65.19,40.86h1.98v1.98h-1.98z", 1, true), new GiftPath("M24.69,67.53h1.98v1.98h-1.98z", 1, true), new GiftPath("M1.98,110.99h1.98v1.98h-1.98z", 1, true), new GiftPath("M0,161.36h1.98v1.98h-1.98z", 1, true), new GiftPath("M14.81,208.77h1.98v1.98h-1.98z", 1, true), new GiftPath("M40.49,251.23h1.98v1.98h-1.98z", 1, true), new GiftPath("M74.07,287.78h1.98v1.98h-1.98z", 1, true), new GiftPath("M113.58,319.38h1.98v1.98h-1.98z", 1, true), new GiftPath("M155.06,345.06h1.98v1.98h-1.98z", 1, true), new GiftPath("M198.52,367.78h1.98v1.98h-1.98z", 1, true), new GiftPath("M237.04,43.83h1.98v1.98h-1.98z", 1, true), new GiftPath("M285.43,30h1.98v1.98h-1.98z", 1, true), new GiftPath("M336.79,42.84h1.98v1.98h-1.98z", 1, true), new GiftPath("M374.32,71.48h1.98v1.98h-1.98z", 1, true), new GiftPath("M396.05,116.91h1.98v1.98h-1.98z", 1, true), new GiftPath("M398.02,165.31h1.98v1.98h-1.98z", 1, true), new GiftPath("M383.21,213.7h1.98v1.98h-1.98z", 1, true), new GiftPath("M357.53,255.19h1.98v1.98h-1.98z", 1, true), new GiftPath("M322.96,289.75h1.98v1.98h-1.98z", 1, true), new GiftPath("M285.43,321.36h1.98v1.98h-1.98z", 1, true), new GiftPath("M241.98,347.04h1.98v1.98h-1.98z", 1, true));
        PATH_HEART = new HandyGiftPathData(arrayListOf, R.mipmap.ic_handy_gift_heart, "0");
        arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M76,36l0,136.83l89.6,0", 7, false, 4, null), new GiftPath("M280.5,181C291.01,181 300.12,179.01 307.84,175.04C315.56,171.07 321.95,165.64 327.01,158.75C332.07,151.85 335.84,143.7 338.3,134.3C340.77,124.9 342,114.76 342,103.9C342,93.03 340.77,82.93 338.3,73.6C335.84,64.26 332.07,56.15 327.01,49.25C321.95,42.36 315.56,36.93 307.84,32.96C300.12,28.99 291.01,27 280.5,27C269.6,27 260.29,28.99 252.57,32.96C244.85,36.93 238.49,42.36 233.5,49.25C228.5,56.15 224.84,64.3 222.5,73.7C220.17,83.1 219,93.17 219,103.9C219,115.04 220.3,125.35 222.89,134.82C225.49,144.29 229.38,152.44 234.57,159.27C239.76,166.09 246.18,171.42 253.84,175.25C261.49,179.08 270.38,181 280.5,181Z", 12, false, 4, null), new GiftPath("M65,221L115.55,347.29C116.57,349.85 119.48,351.1 122.04,350.08C123.31,349.57 124.31,348.57 124.82,347.31L175.84,221L175.84,221", 8, false, 4, null), new GiftPath("M334.33,224L244,224C239.58,224 236,227.58 236,232L236,348.09C236,352.51 239.58,356.09 244,356.09L334.33,356.09L334.33,356.09", 10, false, 4, null), new GiftPath("M265,282.17L331.1,282.17", 2, false, 4, null));
        PATH_LOVE = new HandyGiftPathData(arrayListOf2, R.mipmap.ic_handy_gift_love, "1");
        arrayListOf3 = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M0,267.14h1.77v1.77h-1.77z", 1, true), new GiftPath("M21.19,230.06h1.77v1.77h-1.77z", 1, true), new GiftPath("M42.38,189.44h1.77v1.77h-1.77z", 1, true), new GiftPath("M61.81,152.35h1.77v1.77h-1.77z", 1, true), new GiftPath("M94.48,123.21h1.77v1.77h-1.77z", 1, true), new GiftPath("M138.63,117.03h1.77v1.77h-1.77z", 1, true), new GiftPath("M178.37,132.93h1.77v1.77h-1.77z", 1, true), new GiftPath("M198.68,95.84h1.77v1.77h-1.77z", 1, true), new GiftPath("M234,72h1.77v1.77h-1.77z", 1, true), new GiftPath("M276.38,74.65h1.77v1.77h-1.77z", 1, true), new GiftPath("M318.76,92.31h1.77v1.77h-1.77z", 1, true), new GiftPath("M359.38,109.09h1.77v1.77h-1.77z", 1, true), new GiftPath("M398.23,124.98h1.77v1.77h-1.77z", 1, true), new GiftPath("M41.5,260.08h1.77v1.77h-1.77z", 1, true), new GiftPath("M85.65,248.6h1.77v1.77h-1.77z", 1, true), new GiftPath("M128.04,237.12h1.77v1.77h-1.77z", 1, true), new GiftPath("M168.65,223.88h1.77v1.77h-1.77z", 1, true), new GiftPath("M211.04,209.75h1.77v1.77h-1.77z", 1, true), new GiftPath("M252.54,193.85h1.77v1.77h-1.77z", 1, true), new GiftPath("M292.27,177.08h1.77v1.77h-1.77z", 1, true), new GiftPath("M332.89,157.65h1.77v1.77h-1.77z", 1, true), new GiftPath("M370.86,137.34h1.77v1.77h-1.77z", 1, true), new GiftPath("M22.08,279.51h1.77v1.77h-1.77z", 1, true), new GiftPath("M60.04,298.05h1.77v1.77h-1.77z", 1, true), new GiftPath("M102.43,313.06h1.77v1.77h-1.77z", 1, true), new GiftPath("M145.7,323.66h1.77v1.77h-1.77z", 1, true), new GiftPath("M188.96,325.42h1.77v1.77h-1.77z", 1, true), new GiftPath("M232.23,317.47h1.77v1.77h-1.77z", 1, true), new GiftPath("M272.85,299.81h1.77v1.77h-1.77z", 1, true), new GiftPath("M308.17,275.09h1.77v1.77h-1.77z", 1, true), new GiftPath("M338.19,242.42h1.77v1.77h-1.77z", 1, true), new GiftPath("M361.15,203.57h1.77v1.77h-1.77z", 1, true), new GiftPath("M380.57,164.72h1.77v1.77h-1.77z", 1, true));
        PATH_LIPS = new HandyGiftPathData(arrayListOf3, R.mipmap.ic_handy_gift_lip, "2");
        arrayListOf4 = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M220.48,18.67C231.63,18.67 242.13,22.39 250.64,28.82C259.15,35.24 265.68,44.38 268.91,55.22L268.91,55.22L269.2,56.32C269.51,57.03 269.63,57.35 269.72,57.66L269.72,57.66L269.98,58.67C272.4,69.88 273.66,81.11 273.66,92.37C273.67,102.33 272.73,112.25 270.87,122.02L270.87,122.02L269.65,127.96L329.46,128C330.39,128 331.32,128.06 332.24,128.17L332.24,128.17L333.74,128.3C349.42,129.5 363.8,137.79 372.58,151.11C372.67,151.25 372.77,151.39 372.86,151.54L372.86,151.54L373.06,151.84C376.29,156.73 380.81,164.07 381.32,183.68C381.69,197.81 371.68,243.65 351.39,321.2C350.87,323.17 349.59,325.98 347.59,329.63C343.83,336.56 338.55,342.52 332.14,347.03L332.14,347.03L330.33,348.24C322.03,353.57 312.51,356.33 302.85,356.33C302.54,356.33 302.22,356.32 301.92,356.3L301.92,356.3L60.31,356.22C53.67,356.23 47.62,353.58 43.14,349.26C38.65,344.93 35.75,338.92 35.41,332.18L35.41,332.18L35.38,330.79C35.34,330.27 35.3,329.93 35.37,329.52L35.37,329.52L35.49,179.34C35.49,173.13 37.71,167.38 41.44,162.93C45.15,158.5 50.36,155.36 56.37,154.35L56.37,154.35L57.67,154.18C98.49,149.53 125.31,141.35 137.6,131.04C154.66,116.72 169.91,88.07 169.91,70.08C169.91,55.6 175.46,42.77 184.53,33.55C193.66,24.28 206.34,18.67 220.48,18.67Z", 30, false, 4, null), new GiftPath("M93.67,178.67L93.67,325.67", 4, false, 4, null));
        PATH_LIKE = new HandyGiftPathData(arrayListOf4, R.mipmap.ic_handy_gift_zan, "3");
        arrayListOf5 = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M197.95,20.5C200.45,19.97 203.15,20.4 205.47,21.91C206.63,22.67 207.62,23.66 208.37,24.82L208.37,24.82L267.52,115.4L371.95,143.66C374.61,144.38 376.73,146.11 378.01,148.33C379.28,150.55 379.71,153.26 378.99,155.92C378.63,157.26 377.99,158.51 377.12,159.59L377.12,159.59L309.25,243.83L314.64,351.88C314.78,354.64 313.79,357.19 312.07,359.09C310.35,360.99 307.91,362.23 305.15,362.37C303.77,362.44 302.39,362.22 301.09,361.72L301.09,361.72L200,323.2L98.91,361.72C96.32,362.71 93.59,362.55 91.25,361.5C88.92,360.46 86.98,358.52 86,355.94C85.51,354.65 85.29,353.26 85.36,351.88L85.36,351.88L90.75,243.83L22.88,159.59C21.14,157.44 20.45,154.79 20.72,152.24C21,149.7 22.24,147.26 24.39,145.53C25.47,144.66 26.72,144.02 28.05,143.66L28.05,143.66L132.48,115.4L191.63,24.82C193.14,22.5 195.44,21.02 197.95,20.5Z", 30, false, 4, null), new GiftPath("M200,208.33m-56.33,0a56.33,56.33 0,1 1,112.67 0a56.33,56.33 0,1 1,-112.67 0", 9, true));
        PATH_STAR = new HandyGiftPathData(arrayListOf5, R.mipmap.ic_handy_gift_flower, "4");
        arrayListOf6 = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M305.87,52C308.82,52 311.66,52.81 314.1,54.28C316.54,55.75 318.59,57.86 319.98,60.47L319.98,60.47L375.57,164.7C377.17,167.69 377.74,171.03 377.33,174.24C376.92,177.45 375.54,180.54 373.25,183.04L373.25,183.04L205.9,365.61C204.4,367.24 202.39,368.1 200.35,368.19C198.3,368.28 196.22,367.59 194.59,366.1C194.42,365.94 194.26,365.78 194.1,365.61L194.1,365.61L26.75,183.04C24.46,180.54 23.08,177.45 22.67,174.24C22.26,171.03 22.83,167.69 24.43,164.7L24.43,164.7L80.02,60.47C81.41,57.86 83.46,55.75 85.9,54.28C88.34,52.81 91.18,52 94.13,52L94.13,52Z", 25, false, 4, null), new GiftPath("M221.64,87.12L257.2,144.21", 2, false, 4, null), new GiftPath("M142.89,144.07L178.35,87.14", 2, false, 4, null), new GiftPath("M264.22,200.21L219.08,315.06", 3, false, 4, null), new GiftPath("M180.92,315.06L135.66,199.91", 3, false, 4, null), new GiftPath("M62.67,174L337.67,172", 7, false, 4, null));
        PATH_DIAMONDS = new HandyGiftPathData(arrayListOf6, R.mipmap.ic_handy_gift_diamond, "5");
        arrayListOf7 = CollectionsKt__CollectionsKt.arrayListOf(new GiftPath("M175.05,85.91h1v1h-1z", 1, true), new GiftPath("M200.42,52.93h1v1h-1z", 1, true), new GiftPath("M224.95,85.91h1v1h-1z", 1, true), new GiftPath("M250.32,117.2h1v1h-1z", 1, true), new GiftPath("M275.69,149.34h1v1h-1z", 1, true), new GiftPath("M302.75,167.94h1v1h-1z", 1, true), new GiftPath("M340.8,151.03h1v1h-1z", 1, true), new GiftPath("M379.7,134.96h1v1h-1z", 1, true), new GiftPath("M373.78,173.02h1v1h-1z", 1, true), new GiftPath("M367.86,213.61h1v1h-1z", 1, true), new GiftPath("M361.95,251.66h1v1h-1z", 1, true), new GiftPath("M356.03,292.25h1v1h-1z", 1, true), new GiftPath("M350.11,330.31h1v1h-1z", 1, true), new GiftPath("M323.04,336.23h1v1h-1z", 1, true), new GiftPath("M282.45,342.15h1v1h-1z", 1, true), new GiftPath("M241.86,345.53h1v1h-1z", 1, true), new GiftPath("M201.27,348.07h1v1h-1z", 1, true), new GiftPath("M160.68,345.53h1v1h-1z", 1, true), new GiftPath("M120.08,342.15h1v1h-1z", 1, true), new GiftPath("M79.49,336.23h1v1h-1z", 1, true), new GiftPath("M49.05,330.31h1v1h-1z", 1, true), new GiftPath("M43.13,292.25h1v1h-1z", 1, true), new GiftPath("M37.21,251.66h1v1h-1z", 1, true), new GiftPath("M31.29,213.61h1v1h-1z", 1, true), new GiftPath("M25.37,173.02h1v1h-1z", 1, true), new GiftPath("M20.3,134.96h1v1h-1z", 1, true), new GiftPath("M58.35,151.03h1v1h-1z", 1, true), new GiftPath("M96.41,167.1h1v1h-1z", 1, true), new GiftPath("M124.31,150.18h1v1h-1z", 1, true), new GiftPath("M149.68,117.2h1v1h-1z", 1, true), new GiftPath("M200.42,204.31h1v1h-1z", 1, true), new GiftPath("M165.75,222.91h1v1h-1z", 1, true), new GiftPath("M233.4,222.06h1v1h-1z", 1, true), new GiftPath("M232.56,262.66h1v1h-1z", 1, true), new GiftPath("M200.42,280.42h1v1h-1z", 1, true), new GiftPath("M166.6,262.66h1v1h-1z", 1, true));
        PATH_CROWN = new HandyGiftPathData(arrayListOf7, R.mipmap.ic_handy_gift_6, MVPActivity.FROM_BAG_BADGE);
    }

    public HandyGiftPathData(@NotNull List<GiftPath> giftPathList, int i9, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(giftPathList, "giftPathList");
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.giftPathList = giftPathList;
        this.iconId = i9;
        this.tag = tag;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HandyGiftPathData copy$default(HandyGiftPathData handyGiftPathData, List list, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = handyGiftPathData.giftPathList;
        }
        if ((i10 & 2) != 0) {
            i9 = handyGiftPathData.iconId;
        }
        if ((i10 & 4) != 0) {
            str = handyGiftPathData.tag;
        }
        return handyGiftPathData.copy(list, i9, str);
    }

    @NotNull
    public final List<GiftPath> component1() {
        return this.giftPathList;
    }

    public final int component2() {
        return this.iconId;
    }

    @NotNull
    public final String component3() {
        return this.tag;
    }

    @NotNull
    public final HandyGiftPathData copy(@NotNull List<GiftPath> giftPathList, int i9, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(giftPathList, "giftPathList");
        Intrinsics.checkNotNullParameter(tag, "tag");
        return new HandyGiftPathData(giftPathList, i9, tag);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HandyGiftPathData) {
            HandyGiftPathData handyGiftPathData = (HandyGiftPathData) obj;
            return Intrinsics.areEqual(this.giftPathList, handyGiftPathData.giftPathList) && this.iconId == handyGiftPathData.iconId && Intrinsics.areEqual(this.tag, handyGiftPathData.tag);
        }
        return false;
    }

    @NotNull
    public final List<GiftPath> getGiftPathList() {
        return this.giftPathList;
    }

    public final int getIconId() {
        return this.iconId;
    }

    @NotNull
    public final String getTag() {
        return this.tag;
    }

    public final int getTotalGiftCount() {
        int i9 = 0;
        for (GiftPath giftPath : this.giftPathList) {
            i9 += giftPath.getGiftCount();
        }
        return i9;
    }

    public int hashCode() {
        return (((this.giftPathList.hashCode() * 31) + this.iconId) * 31) + this.tag.hashCode();
    }

    @NotNull
    public String toString() {
        return "HandyGiftPathData(giftPathList=" + this.giftPathList + ", iconId=" + this.iconId + ", tag=" + this.tag + ')';
    }
}
