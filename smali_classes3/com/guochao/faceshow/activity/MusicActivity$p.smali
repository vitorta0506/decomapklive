.class Lcom/guochao/faceshow/activity/MusicActivity$p;
.super Lcom/guochao/faceshow/utils/AAComAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/utils/AAComAdapter<",
        "Lcom/guochao/faceshow/bean/MusicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/AAComAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/activity/MusicActivity$p;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/activity/MusicActivity$p;->c(Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/bean/MusicBean;->musicId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity;->i1(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/MusicBean;)V
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/guochao/faceshow/bean/MusicBean;->mname:Ljava/lang/String;

    const v1, 0x7f0a07c2

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    const v0, 0x7f0a07bf

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 3
    iget-object v1, p2, Lcom/guochao/faceshow/bean/MusicBean;->img:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    const v3, 0x7f080220

    invoke-static {v1, v0, v3, v2}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 4
    iget-object v0, p2, Lcom/guochao/faceshow/bean/MusicBean;->introduce:Ljava/lang/String;

    const v1, 0x7f0a07c0

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    const v0, 0x7f0a01f4

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 6
    iget v1, p2, Lcom/guochao/faceshow/bean/MusicBean;->collect:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 9
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/activity/a;

    invoke-direct {v1, p0, v0, p2}, Lcom/guochao/faceshow/activity/a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity$p;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d81

    .line 10
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getLine(I)Landroid/widget/LinearLayout;

    move-result-object v8

    const v0, 0x7f0a08a4

    .line 11
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getPosition()I

    move-result v5

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/MusicActivity;->u0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v1

    if-ne v1, v5, :cond_1

    const v0, 0x7f0f0574

    .line 14
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 16
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0f05e2

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->setImgResourceId(II)Lcom/guochao/faceshow/utils/AAViewHolder;

    :goto_1
    const v0, 0x7f0a056a

    .line 18
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/activity/MusicActivity$p$a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity$p;ILandroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/bean/MusicBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity$p;->b(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/MusicBean;)V

    return-void
.end method
