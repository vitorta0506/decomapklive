.class public Lj0/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/s$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Lj0/r;)Lj0/n;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj0/r;",
            ")",
            "Lj0/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Lj0/s;

    iget-object v0, p0, Lj0/s$d;->a:Landroid/content/res/Resources;

    invoke-static {}, Lj0/v;->c()Lj0/v;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lj0/s;-><init>(Landroid/content/res/Resources;Lj0/n;)V

    return-object p1
.end method
