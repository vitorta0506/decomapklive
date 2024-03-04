.class public Lt0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt0/f<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Lt0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/e<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lt0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt0/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt0/e;

    invoke-direct {v0}, Lt0/e;-><init>()V

    sput-object v0, Lt0/e;->a:Lt0/e;

    .line 2
    new-instance v0, Lt0/e$a;

    invoke-direct {v0}, Lt0/e$a;-><init>()V

    sput-object v0, Lt0/e;->b:Lt0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lt0/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lt0/f<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lt0/e;->a:Lt0/e;

    return-object v0
.end method

.method public static c()Lt0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lt0/g<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lt0/e;->b:Lt0/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lt0/f$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
