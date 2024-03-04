.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper;->f()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Ljava/text/SimpleDateFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$f;->a:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "imsdk_C_"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const-string v0, "LiteAV_C_"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    :goto_0
    add-int/lit8 v2, v0, 0x8

    .line 3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$f;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xa

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 8
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 9
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_2
    return v1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$f;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
