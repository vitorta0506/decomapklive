.class public final Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->convert$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1",
        "Lhb/b;",
        "",
        "data",
        "",
        "onResponse",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $f2f:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

.field final synthetic $tv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->$f2f:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->$f2f:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;->access$getGcUser$p(Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;)Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel.F2fMatchRoomInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->focusSomebody(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->$tv:Landroid/widget/TextView;

    const v0, 0x7f1203a5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a04fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f08027e

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->$tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    .line 8
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, -0x2

    .line 9
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder$convert$4$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
