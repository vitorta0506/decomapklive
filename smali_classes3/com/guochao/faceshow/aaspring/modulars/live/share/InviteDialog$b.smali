.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
