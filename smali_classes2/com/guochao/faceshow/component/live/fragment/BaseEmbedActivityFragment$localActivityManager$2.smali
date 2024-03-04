.class final Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment$localActivityManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/app/LocalActivityManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/LocalActivityManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment$localActivityManager$2;->this$0:Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/LocalActivityManager;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment$localActivityManager$2;->this$0:Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment$localActivityManager$2;->invoke()Landroid/app/LocalActivityManager;

    move-result-object v0

    return-object v0
.end method
