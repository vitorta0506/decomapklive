.class public final synthetic Lcom/guochao/faceshow/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/activity/MusicActivity$p;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/guochao/faceshow/bean/MusicBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity$p;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/a;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/activity/a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/activity/a;->a:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/activity/MusicActivity$p;->a(Lcom/guochao/faceshow/activity/MusicActivity$p;Landroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/view/View;)V

    return-void
.end method
