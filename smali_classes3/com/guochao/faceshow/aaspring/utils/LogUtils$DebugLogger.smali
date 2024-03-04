.class public final Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;
.super Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugLogger"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\"\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;",
        "Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;",
        "()V",
        "json",
        "",
        "level",
        "",
        "content",
        "Lorg/json/JSONObject;",
        "log",
        "tag",
        "",
        "",
        "lib_base_release"
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
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;-><init>()V

    .line 2
    invoke-static {}, Lad/h;->j()Lad/h$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lad/h$b;->d(Z)Lad/h$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lad/h$b;->b(I)Lad/h$b;

    move-result-object v0

    const/4 v1, 0x7

    .line 5
    invoke-virtual {v0, v1}, Lad/h$b;->c(I)Lad/h$b;

    move-result-object v0

    const-string v1, "FaceCast"

    .line 6
    invoke-virtual {v0, v1}, Lad/h$b;->e(Ljava/lang/String;)Lad/h$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lad/h$b;->a()Lad/h;

    move-result-object v0

    const-string v1, "newBuilder()\n           \u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lad/a;

    invoke-direct {v1, v0}, Lad/a;-><init>(Lad/b;)V

    invoke-static {v1}, Lad/f;->a(Lad/c;)V

    return-void
.end method


# virtual methods
.method public json(ILorg/json/JSONObject;)V
    .locals 0
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lad/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "content"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->access$createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lad/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
