require 'sinatra/base'

class FakeWechat < Sinatra::Base
  post '/pay/unifiedorder' do
    content_type :json
    status 200
    body({
             return_code: 'SUCCESS',
             return_msg: 'OK',
             appid: 'wx2421b1c4370ec43b',
             mch_id: '10000100',
             nonce_str: 'IITRi8Iabbblz1Jc',
             sign: '7921E432F65EB8ED0CE9755F0E86D72F',
             result_code: 'SUCCESS',
             prepay_id: 'wx201411101639507cbf6ffd8b0779950874',
             trade_type: 'JSAPI'
         }.to_json)
  end
end
