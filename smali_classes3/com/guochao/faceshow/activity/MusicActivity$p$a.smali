.class Lcom/guochao/faceshow/activity/MusicActivity$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MusicActivity$p;->b(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/MusicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/guochao/faceshow/bean/MusicBean;

.field final synthetic d:Landroid/widget/LinearLayout;

.field final synthetic e:Lcom/guochao/faceshow/activity/MusicActivity$p;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity$p;ILandroid/widget/ImageView;Lcom/guochao/faceshow/bean/MusicBean;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iput p2, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    iput-object p5, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-boolean v0, p1, Lcom/guochao/faceshow/activity/MusicActivity;->z:Z

    if-eqz v0, :cond_5

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->u0(Lcom/guochao/faceshow/activity/MusicActivity;)I

    move-result p1

    iget v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->a:I

    const v1, 0x7f0f05e2

    const v2, 0x7f0f0574

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->e0(Lcom/guochao/faceshow/activity/MusicActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->k1(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->k1(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->g0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->g0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->v0(Lcom/guochao/faceshow/activity/MusicActivity;I)I

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Music"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/MusicBean;->musicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->F0(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/MusicActivity;->B0(Lcom/guochao/faceshow/activity/MusicActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->d:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->m1(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->b:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MusicActivity;->i0(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/MusicActivity;->y0(Lcom/guochao/faceshow/activity/MusicActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->e:Lcom/guochao/faceshow/activity/MusicActivity$p;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/MusicActivity$p;->a:Lcom/guochao/faceshow/activity/MusicActivity;

    iput-boolean v0, p1, Lcom/guochao/faceshow/activity/MusicActivity;->z:Z

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->c:Lcom/guochao/faceshow/bean/MusicBean;

    iget-object v1, v0, Lcom/guochao/faceshow/bean/MusicBean;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/MusicBean;->musicId:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->d:Landroid/widget/LinearLayout;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/guochao/faceshow/activity/MusicActivity;->l0(Lcom/guochao/faceshow/activity/MusicActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    .line 24
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity$p$a;->d:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/MusicActivity$p$a$a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity$p$a;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
