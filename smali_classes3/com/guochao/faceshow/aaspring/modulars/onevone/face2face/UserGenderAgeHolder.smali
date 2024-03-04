.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field userAge:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userGender:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userGenderLay:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const v0, 0x7f0a0d99

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userAge:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userAge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userAge:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userAge:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGender:Landroid/widget/ImageView;

    const p2, 0x7f0f0301

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    const p2, 0x7f08033b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGender:Landroid/widget/ImageView;

    const p2, 0x7f0f02ea

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    const p2, 0x7f080339

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGender:Landroid/widget/ImageView;

    const p2, 0x7f0f02de

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->userGenderLay:Landroid/view/ViewGroup;

    const p2, 0x7f080338

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
