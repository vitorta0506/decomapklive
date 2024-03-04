.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
