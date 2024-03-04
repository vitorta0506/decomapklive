.class final Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->exitCurrentRoom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $rematch:Z

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;


# direct methods
.method constructor <init>(ZLcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;->$rematch:Z

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;->$rematch:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$exitCurrentRoom$3;->this$0:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->access$startMatch(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;)V

    :cond_0
    return-void
.end method
