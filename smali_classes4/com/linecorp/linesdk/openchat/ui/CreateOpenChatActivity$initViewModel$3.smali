.class final Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lqc/c<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u001a\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0001 \u0002*\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lqc/c;",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
        "kotlin.jvm.PlatformType",
        "lineApiResponse",
        "",
        "onChanged",
        "(Lqc/c;)V",
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

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lqc/c;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->onChanged(Lqc/c;)V

    return-void
.end method

.method public final onChanged(Lqc/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "lineApiResponse"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lqc/c;->c()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    const-string v2, "arg_error_result"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity$initViewModel$3;->this$0:Lcom/linecorp/linesdk/openchat/ui/CreateOpenChatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
