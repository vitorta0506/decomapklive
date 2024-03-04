.class Lcom/google/auth/oauth2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/k;


# static fields
.field static final a:Lcom/google/auth/oauth2/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/t;

    invoke-direct {v0}, Lcom/google/auth/oauth2/t;-><init>()V

    sput-object v0, Lcom/google/auth/oauth2/t;->a:Lcom/google/auth/oauth2/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/auth/oauth2/t;
    .locals 1

    sget-object v0, Lcom/google/auth/oauth2/t;->a:Lcom/google/auth/oauth2/t;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
