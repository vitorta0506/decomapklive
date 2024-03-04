.class public final Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$DebugStreamUrlReplacer;
.super Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugStreamUrlReplacer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$DebugStreamUrlReplacer;",
        "Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;",
        "()V",
        "getStreamUrl",
        "",
        "streamUrl",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;-><init>()V

    return-void
.end method


# virtual methods
.method public getStreamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;->getStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "live.facecast.xyz"

    const-string v2, "testlive.gchao.com"

    .line 2
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
