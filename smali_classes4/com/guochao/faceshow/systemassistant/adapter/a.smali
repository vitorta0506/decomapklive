.class Lcom/guochao/faceshow/systemassistant/adapter/a;
.super Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->getImgInfoArrayFirstItem()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/utils/Tool;->setViewPadding(Landroid/view/View;I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    iget-boolean v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    const/high16 v2, 0x41400000    # 12.0f

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 9
    :goto_0
    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ImageInfoArray:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;

    .line 10
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 11
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/utils/Tool;->setViewPadding(Landroid/view/View;I)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 13
    iget v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->Height:I

    mul-int v1, v1, v0

    iget v2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->Width:I

    div-int/2addr v1, v2

    .line 14
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;->URL:Ljava/lang/String;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    invoke-static {p2, v0, v1}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 17
    new-instance v0, Lcom/guochao/faceshow/systemassistant/adapter/a$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/a$a;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/a;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
