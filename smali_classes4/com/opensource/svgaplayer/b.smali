.class public final synthetic Lcom/opensource/svgaplayer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Lcom/opensource/svgaplayer/SVGADynamicEntity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/opensource/svgaplayer/SVGADynamicEntity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/opensource/svgaplayer/b;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/opensource/svgaplayer/b;->c:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    iput-object p4, p0, Lcom/opensource/svgaplayer/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/opensource/svgaplayer/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/opensource/svgaplayer/b;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/opensource/svgaplayer/b;->c:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    iget-object v3, p0, Lcom/opensource/svgaplayer/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->b(Ljava/lang/String;Landroid/os/Handler;Lcom/opensource/svgaplayer/SVGADynamicEntity;Ljava/lang/String;)V

    return-void
.end method
