.class public final Lcom/google/android/gms/internal/recaptcha/va;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [[J

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_2

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-array v5, v2, [J

    fill-array-data v5, :array_3

    aput-object v5, v1, v3

    const/4 v3, 0x6

    new-array v5, v3, [J

    fill-array-data v5, :array_4

    aput-object v5, v1, v4

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    aput-object v0, v1, v2

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/va;->a:[[J

    return-void

    :array_0
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_1
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_2
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_3
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_4
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_5
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_6
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method public static a(JJ)J
    .locals 11

    add-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int v5, v2, v4

    const-string v6, "checkedAdd"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/recaptcha/wa;->a(ZLjava/lang/String;JJ)V

    return-wide v0
.end method

.method public static b(JJ)J
    .locals 14

    move-wide v6, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    not-long v1, v6

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const-wide/16 v8, 0x3e8

    .line 3
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const-wide/16 v1, -0x3e9

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    mul-long v0, v6, v8

    return-wide v0

    :cond_0
    const/16 v1, 0x40

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x3e8

    const-string v1, "checkedMultiply"

    move-wide v2, p0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/wa;->a(ZLjava/lang/String;JJ)V

    mul-long v12, v6, v8

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-eqz v2, :cond_3

    .line 6
    div-long v0, v12, v6

    cmp-long v2, v0, v8

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const-wide/16 v4, 0x3e8

    const-string v1, "checkedMultiply"

    move-wide v2, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/wa;->a(ZLjava/lang/String;JJ)V

    return-wide v12
.end method

.method public static c(JJ)J
    .locals 11

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-long v8, p0, v0

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    or-int v5, v2, v4

    const-string v6, "checkedSubtract"

    move-wide v7, p0

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/recaptcha/wa;->a(ZLjava/lang/String;JJ)V

    return-wide v0
.end method
