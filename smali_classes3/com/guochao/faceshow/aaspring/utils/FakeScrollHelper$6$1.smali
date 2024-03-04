.class Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$context:Landroid/content/Context;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$view:Landroid/view/View;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$tipsView:Landroid/view/View;

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->access$000(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
