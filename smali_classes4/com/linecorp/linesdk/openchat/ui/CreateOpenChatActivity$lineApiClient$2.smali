.class final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lrc/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lrc/a;",
        "invoke",
        "()Lrc/a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;->invoke()Lrc/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrc/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg_channel_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    new-instance v1, Lcom/linecorp/linesdk/api/LineApiClientBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$lineApiClient$2;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-direct {v1, v2, v0}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/linecorp/linesdk/api/LineApiClientBuilder;->build()Lrc/a;

    move-result-object v0

    return-object v0
.end method
