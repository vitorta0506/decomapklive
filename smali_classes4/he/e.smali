.class public final Lhe/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lhe/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Ljava/util/Random;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhe/e;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lhe/e;->b:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;)Leg/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lfi/a<",
            "Ljava/util/Random;",
            ">;)",
            "Leg/c<",
            "Lhe/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lhe/e;

    invoke-direct {v0, p0, p1}, Lhe/e;-><init>(Lfi/a;Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lhe/d;

    iget-object v1, p0, Lhe/e;->a:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lhe/e;->b:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Random;

    invoke-direct {v0, v1, v2}, Lhe/d;-><init>(Landroid/content/SharedPreferences;Ljava/util/Random;)V

    return-object v0
.end method
