.class public abstract Ll5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/google/auth/Credentials;)Ll5/i;
    .locals 1

    new-instance v0, Ll5/a;

    invoke-direct {v0, p0}, Ll5/a;-><init>(Lcom/google/auth/Credentials;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/auth/Credentials;
.end method
