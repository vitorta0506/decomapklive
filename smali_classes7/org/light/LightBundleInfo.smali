.class public Lorg/light/LightBundleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/LightBundleInfo$LightBundleDownloadInfo;
    }
.end annotation


# instance fields
.field public agent_type:Ljava/lang/String;

.field public bundle_name:Ljava/lang/String;

.field public bundle_special:Ljava/lang/String;

.field public high:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

.field public isSuccess:Z

.field public low:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

.field public middle:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

.field public still:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

.field public veryhigh:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

.field public verylow:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/LightBundleInfo;->isSuccess:Z

    return-void
.end method


# virtual methods
.method public getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "verylow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "still"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "high"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "low"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "middle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "veryhigh"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    iget-object p1, p0, Lorg/light/LightBundleInfo;->verylow:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

    if-eqz p1, :cond_7

    .line 4
    iget-object v1, p1, Lorg/light/LightBundleInfo$LightBundleDownloadInfo;->url:Ljava/lang/String;

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object p1, p0, Lorg/light/LightBundleInfo;->still:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

    if-eqz p1, :cond_7

    .line 6
    iget-object v1, p1, Lorg/light/LightBundleInfo$LightBundleDownloadInfo;->url:Ljava/lang/String;

    goto :goto_1

    .line 7
    :pswitch_2
    iget-object p1, p0, Lorg/light/LightBundleInfo;->high:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

    if-eqz p1, :cond_7

    .line 8
    iget-object v1, p1, Lorg/light/LightBundleInfo$LightBundleDownloadInfo;->url:Ljava/lang/String;

    goto :goto_1

    .line 9
    :pswitch_3
    iget-object p1, p0, Lorg/light/LightBundleInfo;->low:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

    if-eqz p1, :cond_7

    .line 10
    iget-object v1, p1, Lorg/light/LightBundleInfo$LightBundleDownloadInfo;->url:Ljava/lang/String;

    goto :goto_1

    .line 11
    :pswitch_4
    iget-object p1, p0, Lorg/light/LightBundleInfo;->middle:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

    if-eqz p1, :cond_7

    .line 12
    iget-object v1, p1, Lorg/light/LightBundleInfo$LightBundleDownloadInfo;->url:Ljava/lang/String;

    goto :goto_1

    .line 13
    :pswitch_5
    iget-object p1, p0, Lorg/light/LightBundleInfo;->veryhigh:Lorg/light/LightBundleInfo$LightBundleDownloadInfo;

    if-eqz p1, :cond_7

    .line 14
    iget-object v1, p1, Lorg/light/LightBundleInfo$LightBundleDownloadInfo;->url:Ljava/lang/String;

    :cond_7
    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75fd8028 -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x1a354 -> :sswitch_3
        0x30dda2 -> :sswitch_2
        0x68ae1a8 -> :sswitch_1
        0x14f7e25e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
