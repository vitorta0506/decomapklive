.class Lcom/guochao/faceshow/activity/MusicActivity$m;
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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$m;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/AAComAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/MusicBean;)V
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/guochao/faceshow/bean/MusicBean;->mname:Ljava/lang/String;

    const v1, 0x7f0a07c2

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    const v0, 0x7f0a07bf

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0a056a

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 4
    iget-object v3, p2, Lcom/guochao/faceshow/bean/MusicBean;->img:Ljava/lang/String;

    const v4, 0x7f080220

    const/4 v5, 0x4

    invoke-static {v0, v3, v4, v5}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 5
    iget-object v0, p2, Lcom/guochao/faceshow/bean/MusicBean;->introduce:Ljava/lang/String;

    const v3, 0x7f0a07c0

    invoke-virtual {p1, v3, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;

    const v0, 0x7f0a01f4

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 7
    iget v3, p2, Lcom/guochao/faceshow/bean/MusicBean;->collect:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 8
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 10
    :goto_0
    new-instance v3, Lcom/guochao/faceshow/activity/MusicActivity$m$a;

    invoke-direct {v3, p0, v0, p2}, Lcom/guochao/faceshow/activity/MusicActivity$m$a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity$m;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d81

    .line 11
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getLine(I)Landroid/widget/LinearLayout;

    move-result-object v10

    const v0, 0x7f0a08a4

    .line 12
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AAViewHolder;->getImage(I)Landroid/widget/ImageView;

    move-result-object v8

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getPosition()I

    move-result v7

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/activity/MusicActivity$m;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/activity/MusicActivity;->Y0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result v3

    if-ne v3, v7, :cond_1

    const v0, 0x7f0f0574

    .line 15
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "#F9F9F9"

    .line 17
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 18
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0f05e2

    .line 19
    invoke-virtual {p1, v0, v3}, Lcom/guochao/faceshow/utils/AAViewHolder;->setImgResourceId(II)Lcom/guochao/faceshow/utils/AAViewHolder;

    const-string v0, "#FfFfFf"

    .line 20
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    :goto_1
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$m$b;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/guochao/faceshow/activity/MusicActivity$m$b;-><init>(Lcom/guochao/faceshow/activity/MusicActivity$m;ILandroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/utils/AAViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/bean/MusicBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity$m;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/MusicBean;)V

    return-void
.end method
