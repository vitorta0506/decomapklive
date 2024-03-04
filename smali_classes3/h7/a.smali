.class public Lh7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/fragment/app/Fragment;)Lcom/guochao/faceshow/aaspring/base/http/client/a;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object p0

    return-object p0
.end method
