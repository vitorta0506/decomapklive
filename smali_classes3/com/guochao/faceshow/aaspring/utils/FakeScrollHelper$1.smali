.class Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->start(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$tipsView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$tipsView:Landroid/view/View;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$tipsView:Landroid/view/View;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$1;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->access$000(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
