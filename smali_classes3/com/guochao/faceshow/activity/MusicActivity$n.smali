.class Lcom/guochao/faceshow/activity/MusicActivity$n;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
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
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/bean/MusicType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$n;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/bean/MusicType;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/guochao/faceshow/bean/MusicType;->type_name:Ljava/lang/String;

    const v1, 0x7f0a0270

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    const v0, 0x7f0a064e

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 3
    iget-object v1, p2, Lcom/guochao/faceshow/bean/MusicType;->type_img:Ljava/lang/String;

    const v2, 0x7f080220

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    const v0, 0x7f0a056a

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$n$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/activity/MusicActivity$n$a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity$n;Lcom/guochao/faceshow/bean/MusicType;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/bean/MusicType;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/MusicActivity$n;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/bean/MusicType;)V

    return-void
.end method
