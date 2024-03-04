.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;)V

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->a:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d021d

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0583

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0c1c

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0c36

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->d:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->img:Ljava/lang/String;

    iget-object v2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->a:Landroid/widget/ImageView;

    const v3, 0x7f0f0089

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4}, Lhc/a;->q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 11
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->signature:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const v3, 0x7f1209bc

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->signature:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->liveId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120509

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120508

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_2
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$i;Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;I)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method
