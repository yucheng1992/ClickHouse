#pragma once

#include <mutex>

namespace Poco
{
	namespace Net
	{
		class HTTPServerResponse;
	}
}


namespace DB
{

void setResponseDefaultHeaders(Poco::Net::HTTPServerResponse & response);

extern std::once_flag client_ssl_init_once;
void clientSSLInit();

}
