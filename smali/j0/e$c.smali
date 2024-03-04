.class public final Lj0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj0/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj0/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj0/e$c$a;

    invoke-direct {v0, p0}, Lj0/e$c$a;-><init>(Lj0/e$c;)V

    iput-object v0, p0, Lj0/e$c;->a:Lj0/e$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lj0/r;)Lj0/n;
    .locals 1
    .param p1    # Lj0/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/r;",
            ")",
            "Lj0/n<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lj0/e;

    iget-object v0, p0, Lj0/e$c;->a:Lj0/e$a;

    invoke-direct {p1, v0}, Lj0/e;-><init>(Lj0/e$a;)V

    return-object p1
.end method
