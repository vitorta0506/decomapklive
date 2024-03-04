.class public Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->m()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getSystemFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getFormatter(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method
