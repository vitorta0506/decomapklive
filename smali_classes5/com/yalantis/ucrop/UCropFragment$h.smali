.class public Lcom/yalantis/ucrop/UCropFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/UCropFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/content/Intent;

.field final synthetic c:Lcom/yalantis/ucrop/UCropFragment;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/UCropFragment;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/UCropFragment$h;->c:Lcom/yalantis/ucrop/UCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/yalantis/ucrop/UCropFragment$h;->a:I

    .line 3
    iput-object p3, p0, Lcom/yalantis/ucrop/UCropFragment$h;->b:Landroid/content/Intent;

    return-void
.end method
