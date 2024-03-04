.class public final Lorg/apache/http/conn/ssl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/naming/ldap/LdapName;

    invoke-direct {v1, p0}, Ljavax/naming/ldap/LdapName;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljavax/naming/ldap/LdapName;->getRdns()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/naming/ldap/Rdn;

    .line 5
    invoke-virtual {v3}, Ljavax/naming/ldap/Rdn;->toAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v3

    const-string v4, "cn"

    .line 6
    invoke-interface {v3, v4}, Ljavax/naming/directory/Attributes;->get(Ljava/lang/String;)Ljavax/naming/directory/Attribute;

    move-result-object v3
    :try_end_0
    .catch Ljavax/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    invoke-interface {v3}, Ljavax/naming/directory/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/naming/InvalidNameException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 9
    :catch_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid X500 distinguished name"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/conn/ssl/h;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    :cond_3
    const/4 v3, 0x1

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 8
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 9
    new-instance v3, Lorg/apache/http/conn/ssl/h;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v3, v1, v2}, Lorg/apache/http/conn/ssl/h;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_4
    instance-of v1, v1, [B
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-object v0

    .line 11
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
