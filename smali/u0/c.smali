.class public final Lu0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/b;


# static fields
.field private static final b:Lu0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/c;

    invoke-direct {v0}, Lu0/c;-><init>()V

    sput-object v0, Lu0/c;->b:Lu0/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lu0/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lu0/c;->b:Lu0/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
