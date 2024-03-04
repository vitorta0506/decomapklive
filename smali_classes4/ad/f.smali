.class public final Lad/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lad/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/g;

    invoke-direct {v0}, Lad/g;-><init>()V

    sput-object v0, Lad/f;->a:Lad/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lad/c;)V
    .locals 1
    .param p0    # Lad/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lad/f;->a:Lad/i;

    invoke-static {p0}, Lad/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/c;

    invoke-interface {v0, p0}, Lad/i;->b(Lad/c;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lad/f;->a:Lad/i;

    invoke-interface {v0, p0, p1}, Lad/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lad/f;->a:Lad/i;

    invoke-interface {v0, p0}, Lad/i;->a(Ljava/lang/String;)V

    return-void
.end method
