.class Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    new-instance v2, Lcom/guochao/faceshow/views/c;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/views/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->c:Lcom/guochao/faceshow/views/c;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->c:Lcom/guochao/faceshow/views/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%d"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/guochao/faceshow/views/c;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->c:Lcom/guochao/faceshow/views/c;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->llRootLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->c:Lcom/guochao/faceshow/views/c;

    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/c;->setBirthdayListener(Lcom/guochao/faceshow/views/c$f;)V

    return-void
.end method
