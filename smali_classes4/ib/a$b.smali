.class Lib/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/a;->b(Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lib/a$b;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iput p2, p0, Lib/a$b;->b:I

    iput-object p3, p0, Lib/a$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lib/a$b;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    iget-object v0, p0, Lib/a$b;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iget v1, p0, Lib/a$b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lib/a$b;->c:Landroid/widget/ImageView;

    iget v1, p0, Lib/a$b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lib/a$b;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lib/a$b;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
