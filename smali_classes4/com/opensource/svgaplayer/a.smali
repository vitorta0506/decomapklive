.class public final synthetic Lcom/opensource/svgaplayer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGADynamicEntity;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGADynamicEntity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/a;->a:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/a;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/opensource/svgaplayer/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/opensource/svgaplayer/a;->a:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/a;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/opensource/svgaplayer/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->a(Lcom/opensource/svgaplayer/SVGADynamicEntity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
