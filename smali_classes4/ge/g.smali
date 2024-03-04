.class public final Lge/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lge/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lge/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lge/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/g;->a:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Lge/a;",
            ">;)",
            "Leg/c<",
            "Lge/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lge/g;

    invoke-direct {v0, p0}, Lge/g;-><init>(Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lge/f;

    iget-object v1, p0, Lge/g;->a:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lge/a;

    invoke-direct {v0, v1}, Lge/f;-><init>(Lge/a;)V

    return-object v0
.end method
