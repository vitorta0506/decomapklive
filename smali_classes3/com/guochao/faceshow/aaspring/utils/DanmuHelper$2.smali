.class Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->onCreateDanmuProvider()Lv7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemViewType(Lcom/guochao/faceshow/aaspring/danmu/b;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindView(Landroid/view/View;Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$100(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/danmu/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    const v1, 0x7f0a0255

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0652

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0650

    .line 5
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0e14

    .line 6
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v7, ""

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v8

    if-lez v8, :cond_1

    .line 8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsLike()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$200(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06006b

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$300(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0603ce

    :goto_1
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsLike()I

    move-result v2

    if-ne v2, v9, :cond_3

    const v2, 0x7f0f0331

    goto :goto_2

    :cond_3
    const v2, 0x7f0f0332

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$400(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v7, v2

    .line 14
    :goto_3
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 16
    :cond_6
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$500(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$500(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_7
    move-object v2, v3

    :goto_5
    const v7, 0x7f0a00f0

    .line 20
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 21
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_8
    const v2, 0x7f0f0089

    .line 22
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    new-instance v2, Ljc/d;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v5}, Ljc/d;-><init>(FI)V

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/danmu/b;)V

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 24
    :goto_6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getMVPUrl()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 26
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$600(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$600(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Bitmap;

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_7

    .line 29
    :cond_a
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/danmu/b;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    :cond_b
    :goto_7
    return-void
.end method

.method public onCreateView(I)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d022a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
