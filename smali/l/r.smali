.class public Ll/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/m0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/m0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll/r;

    invoke-direct {v0}, Ll/r;-><init>()V

    sput-object v0, Ll/r;->a:Ll/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ll/r;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ll/s;->g(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
