.class public Lj0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/v$a;,
        Lj0/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lj0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj0/v;

    invoke-direct {v0}, Lj0/v;-><init>()V

    sput-object v0, Lj0/v;->a:Lj0/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lj0/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj0/v<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lj0/v;->a:Lj0/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe0/e;)Lj0/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Le0/e;",
            ")",
            "Lj0/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lj0/n$a;

    new-instance p3, Lu0/d;

    invoke-direct {p3, p1}, Lu0/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lj0/v$b;

    invoke-direct {p4, p1}, Lj0/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lj0/n$a;-><init>(Le0/b;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
