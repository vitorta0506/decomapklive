.class public Lk0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/o<",
        "Lj0/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj0/m<",
            "Lj0/g;",
            "Lj0/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj0/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lj0/m;-><init>(J)V

    iput-object v0, p0, Lk0/a$a;->a:Lj0/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lj0/r;)Lj0/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/r;",
            ")",
            "Lj0/n<",
            "Lj0/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lk0/a;

    iget-object v0, p0, Lk0/a$a;->a:Lj0/m;

    invoke-direct {p1, v0}, Lk0/a;-><init>(Lj0/m;)V

    return-object p1
.end method
