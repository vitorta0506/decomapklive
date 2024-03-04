.class public Ly9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
    .locals 3

    const v0, 0x7f0d037b

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0764

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p1

    :cond_0
    const p3, 0x7f0d02bf

    .line 5
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p1

    :cond_1
    const p3, 0x7f0d02c0

    .line 7
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p1

    :cond_2
    const p3, 0x7f0d02d4

    .line 9
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p1
.end method
