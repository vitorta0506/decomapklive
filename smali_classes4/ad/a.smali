.class public Lad/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/c;


# instance fields
.field private final a:Lad/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lad/b;)V
    .locals 0
    .param p1    # Lad/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lad/b;

    iput-object p1, p0, Lad/a;->a:Lad/b;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Z
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lad/a;->a:Lad/b;

    invoke-interface {v0, p1, p2, p3}, Lad/b;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
