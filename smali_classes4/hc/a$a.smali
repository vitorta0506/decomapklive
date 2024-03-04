.class Lhc/a$a;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/a;->b(Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lhc/a$a;->a:Landroid/widget/ImageView;

    iput p2, p0, Lhc/a$a;->b:I

    iput-object p3, p0, Lhc/a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ls0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Ljava/io/File;Lt0/f;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lt0/f<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lhc/a$a;->a:Landroid/widget/ImageView;

    iget v0, p0, Lhc/a$a;->b:I

    invoke-static {p2, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 3
    iget-object p2, p0, Lhc/a$a;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lhc/a;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lhc/a$a;->onResourceReady(Ljava/io/File;Lt0/f;)V

    return-void
.end method
