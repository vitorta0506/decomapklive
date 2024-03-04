.class public abstract Lt0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt0/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lt0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt0/a;->a:Lt0/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DataSource;Z)Lt0/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lt0/f<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt0/a;->a:Lt0/g;

    invoke-interface {v0, p1, p2}, Lt0/g;->a(Lcom/bumptech/glide/load/DataSource;Z)Lt0/f;

    move-result-object p1

    .line 2
    new-instance p2, Lt0/a$a;

    invoke-direct {p2, p0, p1}, Lt0/a$a;-><init>(Lt0/a;Lt0/f;)V

    return-object p2
.end method

.method protected abstract b(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
