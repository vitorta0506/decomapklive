.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "\u5df2\u7ecf\u6709\u4eba\u4e86"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->c:[Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;

    aget-object p1, v2, p1

    invoke-interface {p1}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->q2(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    goto :goto_0

    :cond_2
    if-eq v0, p1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-static {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;II)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "\u4f60\u5df2\u7ecf\u5728\u8fd9\u4e2a\u4f4d\u7f6e\u4e0a\u4e86"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method
